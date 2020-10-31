.class public final synthetic Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDeviceDispatcherStub$7E5sSMD41PYjkWfIKdg4SkBnq7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioManager$PrefDevListenerInfo;

.field public final synthetic f$1:Landroid/media/audiopolicy/AudioProductStrategy;

.field public final synthetic f$2:Landroid/media/AudioDeviceAttributes;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioManager$PrefDevListenerInfo;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDeviceDispatcherStub$7E5sSMD41PYjkWfIKdg4SkBnq7c;->f$0:Landroid/media/AudioManager$PrefDevListenerInfo;

    iput-object p2, p0, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDeviceDispatcherStub$7E5sSMD41PYjkWfIKdg4SkBnq7c;->f$1:Landroid/media/audiopolicy/AudioProductStrategy;

    iput-object p3, p0, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDeviceDispatcherStub$7E5sSMD41PYjkWfIKdg4SkBnq7c;->f$2:Landroid/media/AudioDeviceAttributes;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDeviceDispatcherStub$7E5sSMD41PYjkWfIKdg4SkBnq7c;->f$0:Landroid/media/AudioManager$PrefDevListenerInfo;

    iget-object v1, p0, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDeviceDispatcherStub$7E5sSMD41PYjkWfIKdg4SkBnq7c;->f$1:Landroid/media/audiopolicy/AudioProductStrategy;

    iget-object v2, p0, Landroid/media/-$$Lambda$AudioManager$StrategyPreferredDeviceDispatcherStub$7E5sSMD41PYjkWfIKdg4SkBnq7c;->f$2:Landroid/media/AudioDeviceAttributes;

    invoke-static {v0, v1, v2}, Landroid/media/AudioManager$StrategyPreferredDeviceDispatcherStub;->lambda$dispatchPrefDeviceChanged$0(Landroid/media/AudioManager$PrefDevListenerInfo;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)V

    return-void
.end method
