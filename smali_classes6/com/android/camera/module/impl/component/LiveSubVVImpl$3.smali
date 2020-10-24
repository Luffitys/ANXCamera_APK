.class Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

.field final synthetic val$thumbPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->this$0:Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    iput-object p2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->val$thumbPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->apply(Lcom/android/camera/module/loader/NullHolder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public apply(Lcom/android/camera/module/loader/NullHolder;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->val$thumbPath:Ljava/lang/String;

    const/16 v1, 0x5a

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera/Util;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;)Z

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;->val$thumbPath:Ljava/lang/String;

    return-object p0
.end method
