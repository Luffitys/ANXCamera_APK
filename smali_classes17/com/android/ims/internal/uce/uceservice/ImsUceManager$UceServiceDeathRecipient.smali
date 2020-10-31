.class Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;
.super Ljava/lang/Object;
.source "ImsUceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UceServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/ImsUceManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;-><init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;
    invoke-static {v0, v1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->access$102(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/IUceService;)Lcom/android/ims/internal/uce/uceservice/IUceService;

    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    # getter for: Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->access$200(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.internal.uce.UCE_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    # getter for: Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->access$200(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_23
    return-void
.end method
