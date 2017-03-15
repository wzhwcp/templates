package ${packageName};

import ${applicationPackage}.ui.base.BasePresenter;
import ${applicationPackage}.data.DataManager;
import io.reactivex.disposables.CompositeDisposable;

public class ${presenterName}<V extends ${mvpViewName}> extends BasePresenter<V> 
	implements ${mvpPresenterName}<V>{

    public LoginPresenter(DataManager dataManager, CompositeDisposable compositeDisposable) {
        super(dataManager, compositeDisposable);
    }
}
