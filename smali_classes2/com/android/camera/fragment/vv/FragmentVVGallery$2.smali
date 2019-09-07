.class Lcom/android/camera/fragment/vv/FragmentVVGallery$2;
.super Ljava/lang/Object;
.source "FragmentVVGallery.java"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVGallery;->loadItemList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVGallery;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVGallery;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/fragment/vv/ResourceManager;->getInstance()Lcom/android/camera/fragment/vv/ResourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vv/info.json"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/fragment/vv/ResourceManager;->getAssetCache(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->access$100(Lcom/android/camera/fragment/vv/FragmentVVGallery;)Lcom/android/camera/fragment/vv/VVList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/BaseResourceList;->createResourcesList(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/android/camera/fragment/vv/ResourceManager;->getInstance()Lcom/android/camera/fragment/vv/ResourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-static {p0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->access$100(Lcom/android/camera/fragment/vv/FragmentVVGallery;)Lcom/android/camera/fragment/vv/VVList;

    move-result-object p0

    sget-object v2, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TEMPLATE_PATH:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/camera/fragment/vv/ResourceManager;->decompressResource(Landroid/content/Context;Lcom/android/camera/fragment/vv/BaseResourceList;Ljava/lang/String;Z)V

    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method
