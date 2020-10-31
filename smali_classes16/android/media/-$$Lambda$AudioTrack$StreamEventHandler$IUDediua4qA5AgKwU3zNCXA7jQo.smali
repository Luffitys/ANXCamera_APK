.class public final synthetic Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$IUDediua4qA5AgKwU3zNCXA7jQo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioTrack$StreamEventHandler;

.field public final synthetic f$1:Landroid/media/AudioTrack$StreamEventCbInfo;

.field public final synthetic f$2:Landroid/os/Message;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack$StreamEventHandler;Landroid/media/AudioTrack$StreamEventCbInfo;Landroid/os/Message;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$IUDediua4qA5AgKwU3zNCXA7jQo;->f$0:Landroid/media/AudioTrack$StreamEventHandler;

    iput-object p2, p0, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$IUDediua4qA5AgKwU3zNCXA7jQo;->f$1:Landroid/media/AudioTrack$StreamEventCbInfo;

    iput-object p3, p0, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$IUDediua4qA5AgKwU3zNCXA7jQo;->f$2:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$IUDediua4qA5AgKwU3zNCXA7jQo;->f$0:Landroid/media/AudioTrack$StreamEventHandler;

    iget-object v1, p0, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$IUDediua4qA5AgKwU3zNCXA7jQo;->f$1:Landroid/media/AudioTrack$StreamEventCbInfo;

    iget-object v2, p0, Landroid/media/-$$Lambda$AudioTrack$StreamEventHandler$IUDediua4qA5AgKwU3zNCXA7jQo;->f$2:Landroid/os/Message;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack$StreamEventHandler;->lambda$handleMessage$0$AudioTrack$StreamEventHandler(Landroid/media/AudioTrack$StreamEventCbInfo;Landroid/os/Message;)V

    return-void
.end method
