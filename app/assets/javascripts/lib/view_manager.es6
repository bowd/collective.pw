class ViewManager {
  constructor() {
    this.views = {};
  }

  tick() {
    this._garbageCollect();
    this._mountViews();
  }

  // private

  _garbageCollect() {
    for (let viewKey of Object.keys(this.views)) {
      if (!this._viewExists(viewKey)) {
        let view = this.views[viewKey];
        console.log(`[VM::GC] Unmounting ${view.className} (${viewKey})`);
        view.bview.undelegateEvents();
        if (typeof view.bview.cleanup === "function") {
          view.bview.cleanup();
        }
        delete this.views[viewKey];
      }
    }
  }

  _mountViews() {
    $('[data-backbone-view]').each((index, viewEl) => {
      let mounted = $(viewEl).attr('data-backbone-view-key') != undefined
      if (!mounted) {
        let viewClassName = $(viewEl).attr('data-backbone-view');
        let ViewClass;
        let viewPropsString = $(viewEl).attr('data-backbone-props');
        let viewProps;
        try {
          viewProps = JSON.parse(viewPropsString);
        } catch (e) {
          viewProps = {};
        }

        try {
          ViewClass = eval("Views."+viewClassName);
        } catch (e) {
          console.warn(`Trying to mount ${viewClassName}, but it's undefined.`);
          return;
        }

        let key = _.uniqueId('vm_');
        $(viewEl).attr('data-backbone-view-key', key);
        this.views[key] = {
          className: viewClassName,
          bview: new ViewClass({el: viewEl, props: viewProps})
        }

        console.log(`[VM] Mounting ${viewClassName} (${key})`);
      }
    });
  }

  _viewExists(viewKey) {
    return $(`[data-backbone-view-key="${viewKey}"]`).length > 0
  }


}

