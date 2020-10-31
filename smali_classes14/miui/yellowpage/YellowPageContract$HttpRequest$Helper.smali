.class public final Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract$HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Helper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMethod:Ljava/lang/String;

.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestCache:Z

.field private mRequestServer:Z

.field private mRequestYellowPage:Z

.field private mRequireLocId:Z

.field private mRequireLogin:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mContext:Landroid/content/Context;

    const-string v0, "GET"

    iput-object v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mMethod:Ljava/lang/String;

    iput-object p2, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mUrl:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestCache:Z

    iput-boolean v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestServer:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLogin:Z

    iput-boolean v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLocId:Z

    iput-boolean v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestYellowPage:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mParams:Ljava/util/Map;

    return-void
.end method

.method private constructParams()Landroid/os/Bundle;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mMethod:Ljava/lang/String;

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mUrl:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLocId:Z

    const-string v2, "set_attach_location"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLogin:Z

    const-string v2, "set_attach_user_info"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestCache:Z

    const-string v2, "set_request_cache"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestServer:Z

    const-string v2, "set_request_server"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestYellowPage:Z

    const-string v2, "set_request_yellowpage"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mParams:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :cond_58
    return-object v0
.end method

.method private getResult(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mContext:Landroid/content/Context;

    const-string v1, "request.http"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .registers 4

    iget-object v0, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public requestLocal()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->constructParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "invoke_request_local"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->getResult(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public requestServer()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->constructParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "invoke_request_server"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->getResult(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setRequestCache(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .registers 2

    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestCache:Z

    return-object p0
.end method

.method public setRequestServer(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .registers 2

    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestServer:Z

    return-object p0
.end method

.method public setRequestYellowPage(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .registers 2

    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequestYellowPage:Z

    return-object p0
.end method

.method public setRequireLocId(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .registers 2

    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLocId:Z

    return-object p0
.end method

.method public setRequireLogin(Z)Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    .registers 2

    iput-boolean p1, p0, Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;->mRequireLogin:Z

    return-object p0
.end method
