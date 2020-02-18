.class Lcom/android/camera/aftersales/AftersalesManager$1;
.super Ljava/lang/Object;
.source "AftersalesManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/aftersales/AftersalesManager;-><init>()V
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

    iput-object p1, p0, Lcom/android/camera/aftersales/AftersalesManager$1;->this$0:Lcom/android/camera/aftersales/AftersalesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance p0, Ljava/lang/Thread;

    const-string v0, "aftersales"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-object p0
.end method
