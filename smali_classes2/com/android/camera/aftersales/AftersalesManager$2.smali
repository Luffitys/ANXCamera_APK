.class Lcom/android/camera/aftersales/AftersalesManager$2;
.super Ljava/lang/Object;
.source "AftersalesManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/aftersales/AftersalesManager;->clean()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/aftersales/AftersalesManager;


# direct methods
.method constructor <init>(Lcom/android/camera/aftersales/AftersalesManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/aftersales/AftersalesManager$2;->this$0:Lcom/android/camera/aftersales/AftersalesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    sget-object p0, Lcom/android/camera/aftersales/AftersalesManager;->FILE_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method
