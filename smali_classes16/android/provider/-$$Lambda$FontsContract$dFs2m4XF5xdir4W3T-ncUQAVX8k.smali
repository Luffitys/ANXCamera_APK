.class public final synthetic Landroid/provider/-$$Lambda$FontsContract$dFs2m4XF5xdir4W3T-ncUQAVX8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/os/CancellationSignal;

.field public final synthetic f$2:Landroid/provider/FontRequest;

.field public final synthetic f$3:Landroid/os/Handler;

.field public final synthetic f$4:Landroid/provider/FontsContract$FontRequestCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/-$$Lambda$FontsContract$dFs2m4XF5xdir4W3T-ncUQAVX8k;->f$0:Landroid/content/Context;

    iput-object p2, p0, Landroid/provider/-$$Lambda$FontsContract$dFs2m4XF5xdir4W3T-ncUQAVX8k;->f$1:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroid/provider/-$$Lambda$FontsContract$dFs2m4XF5xdir4W3T-ncUQAVX8k;->f$2:Landroid/provider/FontRequest;

    iput-object p4, p0, Landroid/provider/-$$Lambda$FontsContract$dFs2m4XF5xdir4W3T-ncUQAVX8k;->f$3:Landroid/os/Handler;

    iput-object p5, p0, Landroid/provider/-$$Lambda$FontsContract$dFs2m4XF5xdir4W3T-ncUQAVX8k;->f$4:Landroid/provider/FontsContract$FontRequestCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Landroid/provider/-$$Lambda$FontsContract$dFs2m4XF5xdir4W3T-ncUQAVX8k;->f$0:Landroid/content/Context;

    iget-object v1, p0, Landroid/provider/-$$Lambda$FontsContract$dFs2m4XF5xdir4W3T-ncUQAVX8k;->f$1:Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroid/provider/-$$Lambda$FontsContract$dFs2m4XF5xdir4W3T-ncUQAVX8k;->f$2:Landroid/provider/FontRequest;

    iget-object v3, p0, Landroid/provider/-$$Lambda$FontsContract$dFs2m4XF5xdir4W3T-ncUQAVX8k;->f$3:Landroid/os/Handler;

    iget-object v4, p0, Landroid/provider/-$$Lambda$FontsContract$dFs2m4XF5xdir4W3T-ncUQAVX8k;->f$4:Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/FontsContract;->lambda$requestFonts$12(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method
