.class public final synthetic Landroid/net/-$$Lambda$DnsResolver$05nTktlCCI7FQsULCMbgIrjmrGc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Landroid/net/DnsResolver;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/io/FileDescriptor;


# direct methods
.method public synthetic constructor <init>(Landroid/net/DnsResolver;Ljava/lang/Object;Ljava/io/FileDescriptor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$DnsResolver$05nTktlCCI7FQsULCMbgIrjmrGc;->f$0:Landroid/net/DnsResolver;

    iput-object p2, p0, Landroid/net/-$$Lambda$DnsResolver$05nTktlCCI7FQsULCMbgIrjmrGc;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/net/-$$Lambda$DnsResolver$05nTktlCCI7FQsULCMbgIrjmrGc;->f$2:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 4

    iget-object v0, p0, Landroid/net/-$$Lambda$DnsResolver$05nTktlCCI7FQsULCMbgIrjmrGc;->f$0:Landroid/net/DnsResolver;

    iget-object v1, p0, Landroid/net/-$$Lambda$DnsResolver$05nTktlCCI7FQsULCMbgIrjmrGc;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/-$$Lambda$DnsResolver$05nTktlCCI7FQsULCMbgIrjmrGc;->f$2:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1, v2}, Landroid/net/DnsResolver;->lambda$addCancellationSignal$10$DnsResolver(Ljava/lang/Object;Ljava/io/FileDescriptor;)V

    return-void
.end method
