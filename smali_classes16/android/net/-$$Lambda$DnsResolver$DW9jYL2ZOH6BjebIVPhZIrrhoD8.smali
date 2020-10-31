.class public final synthetic Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Landroid/net/DnsResolver;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/io/FileDescriptor;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/io/FileDescriptor;


# direct methods
.method public synthetic constructor <init>(Landroid/net/DnsResolver;Ljava/lang/Object;ZLjava/io/FileDescriptor;ZLjava/io/FileDescriptor;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;->f$0:Landroid/net/DnsResolver;

    iput-object p2, p0, Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;->f$1:Ljava/lang/Object;

    iput-boolean p3, p0, Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;->f$2:Z

    iput-object p4, p0, Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;->f$3:Ljava/io/FileDescriptor;

    iput-boolean p5, p0, Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;->f$4:Z

    iput-object p6, p0, Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;->f$5:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 7

    iget-object v0, p0, Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;->f$0:Landroid/net/DnsResolver;

    iget-object v1, p0, Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;->f$1:Ljava/lang/Object;

    iget-boolean v2, p0, Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;->f$2:Z

    iget-object v3, p0, Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;->f$3:Ljava/io/FileDescriptor;

    iget-boolean v4, p0, Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;->f$4:Z

    iget-object v5, p0, Landroid/net/-$$Lambda$DnsResolver$DW9jYL2ZOH6BjebIVPhZIrrhoD8;->f$5:Ljava/io/FileDescriptor;

    invoke-virtual/range {v0 .. v5}, Landroid/net/DnsResolver;->lambda$query$6$DnsResolver(Ljava/lang/Object;ZLjava/io/FileDescriptor;ZLjava/io/FileDescriptor;)V

    return-void
.end method
