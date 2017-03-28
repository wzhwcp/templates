package ${packageName};

import ${applicationPackage}.ui.base.BasePresenter;
import ${applicationPackage}.data.DataManager;
import io.reactivex.disposables.CompositeDisposable;

public class ${presenterName}<V extends ${mvpViewName}> extends BasePresenter<V> 
	implements ${mvpPresenterName}<V>{

    public ${presenterName}(DataManager dataManager, CompositeDisposable compositeDisposable) {
        super(dataManager, compositeDisposable);
    }
}
