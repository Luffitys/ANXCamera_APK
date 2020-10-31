.class final Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
.super Ljava/lang/Object;
.source "InlineSuggestionRenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/InlineSuggestionRenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InlineSuggestionUiImpl"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mSessionId:I

.field private final mUserId:I

.field private mViewHost:Landroid/view/SurfaceControlViewHost;

.field final synthetic this$0:Landroid/service/autofill/InlineSuggestionRenderService;


# direct methods
.method constructor <init>(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/view/SurfaceControlViewHost;Landroid/os/Handler;II)V
    .registers 6

    iput-object p1, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->this$0:Landroid/service/autofill/InlineSuggestionRenderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iput-object p3, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->mHandler:Landroid/os/Handler;

    iput p4, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->mUserId:I

    iput p5, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->mSessionId:I

    return-void
.end method

.method static synthetic access$000(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I
    .registers 2

    iget v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->mUserId:I

    return v0
.end method

.method static synthetic access$100(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I
    .registers 2

    iget v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->mSessionId:I

    return v0
.end method


# virtual methods
.method public getSurfacePackage(Landroid/service/autofill/ISurfacePackageResultCallback;)V
    .registers 4

    const-string v0, "InlineSuggestionRenderService"

    const-string v1, "getSurfacePackage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$InlineSuggestionUiImpl$vSBz9jp2iZorXLIdZ_fbHUHXfvg;

    invoke-direct {v1, p0, p1}, Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$InlineSuggestionUiImpl$vSBz9jp2iZorXLIdZ_fbHUHXfvg;-><init>(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Landroid/service/autofill/ISurfacePackageResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$getSurfacePackage$1$InlineSuggestionRenderService$InlineSuggestionUiImpl(Landroid/service/autofill/ISurfacePackageResultCallback;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    :goto_c
    invoke-interface {p1, v0}, Landroid/service/autofill/ISurfacePackageResultCallback;->onResult(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "InlineSuggestionRenderService"

    const-string v2, "RemoteException calling onSurfacePackage"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    return-void
.end method

.method public synthetic lambda$releaseSurfaceControlViewHost$0$InlineSuggestionRenderService$InlineSuggestionUiImpl()V
    .registers 4

    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "InlineSuggestionRenderService"

    const-string v1, "Releasing inline suggestion view host"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v1, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->this$0:Landroid/service/autofill/InlineSuggestionRenderService;

    # getter for: Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;
    invoke-static {v1}, Landroid/service/autofill/InlineSuggestionRenderService;->access$200(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/util/LruCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed the inline suggestion from the cache, current size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->this$0:Landroid/service/autofill/InlineSuggestionRenderService;

    # getter for: Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;
    invoke-static {v2}, Landroid/service/autofill/InlineSuggestionRenderService;->access$200(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/util/LruCache;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/LruCache;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public releaseSurfaceControlViewHost()V
    .registers 3

    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$InlineSuggestionUiImpl$tbRHULrrEhVwh-9OT70ovKqEssY;

    invoke-direct {v1, p0}, Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$InlineSuggestionUiImpl$tbRHULrrEhVwh-9OT70ovKqEssY;-><init>(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
