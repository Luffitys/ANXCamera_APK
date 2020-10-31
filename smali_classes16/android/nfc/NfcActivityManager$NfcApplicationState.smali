.class Landroid/nfc/NfcActivityManager$NfcApplicationState;
.super Ljava/lang/Object;
.source "NfcActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcApplicationState"
.end annotation


# instance fields
.field final app:Landroid/app/Application;

.field refCount:I

.field final synthetic this$0:Landroid/nfc/NfcActivityManager;


# direct methods
.method public constructor <init>(Landroid/nfc/NfcActivityManager;Landroid/app/Application;)V
    .registers 4

    iput-object p1, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->this$0:Landroid/nfc/NfcActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->refCount:I

    iput-object p2, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public register()V
    .registers 3

    iget v0, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->refCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->refCount:I

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->this$0:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_f
    return-void
.end method

.method public unregister()V
    .registers 3

    iget v0, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->refCount:I

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->this$0:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_2a

    :cond_10
    if-gez v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-ve refcount for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NFC"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    return-void
.end method
