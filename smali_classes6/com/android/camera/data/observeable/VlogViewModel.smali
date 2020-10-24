.class public Lcom/android/camera/data/observeable/VlogViewModel;
.super Lcom/android/camera/data/observeable/VMBase;
.source ""


# instance fields
.field private mVVList:Lcom/android/camera/fragment/vv/VVList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/data/observeable/VMBase;-><init>()V

    return-void
.end method

.method private synthetic OooO00o(Lcom/android/camera/fragment/vv/VVList;)Lcom/android/camera/fragment/vv/VVList;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/observeable/VlogViewModel;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    return-object p1
.end method


# virtual methods
.method public synthetic OooO0O0(Lcom/android/camera/fragment/vv/VVList;)Lcom/android/camera/fragment/vv/VVList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/observeable/VlogViewModel;->OooO00o(Lcom/android/camera/fragment/vv/VVList;)Lcom/android/camera/fragment/vv/VVList;

    return-object p1
.end method

.method protected achieveEndOfCycle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVVList()Lcom/android/camera/fragment/vv/VVList;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/data/observeable/VlogViewModel;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/camera/fragment/vv/VVList;->country:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/data/observeable/VlogViewModel;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVVListObservable()Lio/reactivex/Observable;
    .locals 3

    new-instance v0, Lcom/android/camera/resource/SimpleNativeResourceInfoListFillRequest;

    sget-object v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TEMPLATE_PATH:Ljava/lang/String;

    const-string v2, "vv/info.json"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/resource/SimpleNativeResourceInfoListFillRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/data/observeable/OooO0o;

    invoke-direct {v1, p0}, Lcom/android/camera/data/observeable/OooO0o;-><init>(Lcom/android/camera/data/observeable/VlogViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method protected rollbackData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/data/observeable/VlogViewModel;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    return-void
.end method
