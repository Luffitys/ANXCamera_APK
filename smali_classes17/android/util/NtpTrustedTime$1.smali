.class Landroid/util/NtpTrustedTime$1;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/NtpTrustedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Landroid/net/ConnectivityManager;",
        ">;"
    }
.end annotation


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic this$0:Landroid/util/NtpTrustedTime;


# direct methods
.method constructor <init>(Landroid/util/NtpTrustedTime;)V
    .registers 2

    iput-object p1, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Landroid/net/ConnectivityManager;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/util/NtpTrustedTime$1;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    # getter for: Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/util/NtpTrustedTime;->access$000(Landroid/util/NtpTrustedTime;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/util/NtpTrustedTime$1;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_15
    iget-object v0, p0, Landroid/util/NtpTrustedTime$1;->mConnectivityManager:Landroid/net/ConnectivityManager;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$1;->get()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method
