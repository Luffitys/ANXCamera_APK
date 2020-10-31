.class public final synthetic Landroid/media/session/-$$Lambda$MediaSessionManager$OnMediaKeyEventDispatchedListenerStub$IAaO7JPqesHWh-9-dsZuk-lEsao;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Map$Entry;

.field public final synthetic f$1:Landroid/view/KeyEvent;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/media/session/MediaSession$Token;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;Landroid/view/KeyEvent;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$OnMediaKeyEventDispatchedListenerStub$IAaO7JPqesHWh-9-dsZuk-lEsao;->f$0:Ljava/util/Map$Entry;

    iput-object p2, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$OnMediaKeyEventDispatchedListenerStub$IAaO7JPqesHWh-9-dsZuk-lEsao;->f$1:Landroid/view/KeyEvent;

    iput-object p3, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$OnMediaKeyEventDispatchedListenerStub$IAaO7JPqesHWh-9-dsZuk-lEsao;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$OnMediaKeyEventDispatchedListenerStub$IAaO7JPqesHWh-9-dsZuk-lEsao;->f$3:Landroid/media/session/MediaSession$Token;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$OnMediaKeyEventDispatchedListenerStub$IAaO7JPqesHWh-9-dsZuk-lEsao;->f$0:Ljava/util/Map$Entry;

    iget-object v1, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$OnMediaKeyEventDispatchedListenerStub$IAaO7JPqesHWh-9-dsZuk-lEsao;->f$1:Landroid/view/KeyEvent;

    iget-object v2, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$OnMediaKeyEventDispatchedListenerStub$IAaO7JPqesHWh-9-dsZuk-lEsao;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$OnMediaKeyEventDispatchedListenerStub$IAaO7JPqesHWh-9-dsZuk-lEsao;->f$3:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, v1, v2, v3}, Landroid/media/session/MediaSessionManager$OnMediaKeyEventDispatchedListenerStub;->lambda$onMediaKeyEventDispatched$0(Ljava/util/Map$Entry;Landroid/view/KeyEvent;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    return-void
.end method
