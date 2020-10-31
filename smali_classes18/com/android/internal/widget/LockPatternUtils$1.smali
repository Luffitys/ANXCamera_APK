.class Lcom/android/internal/widget/LockPatternUtils$1;
.super Landroid/os/AsyncTask;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils;

.field final synthetic val$passwordString:Ljava/lang/String;

.field final synthetic val$service:Landroid/os/IBinder;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$1;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$service:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$type:I

    iput-object p4, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$passwordString:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$service:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    :try_start_6
    iget v1, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$type:I

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$passwordString:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/os/storage/IStorageManager;->changeEncryptionPassword(ILjava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception v1

    const-string v2, "LockPatternUtils"

    const-string v3, "Error changing encryption password"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    const/4 v1, 0x0

    return-object v1
.end method
