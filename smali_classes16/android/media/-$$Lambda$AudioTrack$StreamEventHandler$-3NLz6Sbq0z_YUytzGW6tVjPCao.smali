.class public final synthetic Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$-3NLz6Sbq0z_YUytzGW6tVjPCao;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioTrack$StreamEventHandler;

.field public final synthetic f$1:Landroid/media/AudioTrack$StreamEventCbInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$-3NLz6Sbq0z_YUytzGW6tVjPCao;->f$0:Landroid/media/AudioTrack$StreamEventHandler;

    iput-object p2, p0, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$-3NLz6Sbq0z_YUytzGW6tVjPCao;->f$1:Landroid/media/AudioTrack$StreamEventCbInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$-3NLz6Sbq0z_YUytzGW6tVjPCao;->f$0:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v1, p0, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$-3NLz6Sbq0z_YUytzGW6tVjPCao;->f$1:Landroid/media/AudioTrack$StreamEventCbInfo;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$StreamEventHandler;->lambda$handleMessage$2$AudioTrack$StreamEventHandler(Landroid/media/AudioTrack$StreamEventCbInfo;)V

    return-void
.end method
