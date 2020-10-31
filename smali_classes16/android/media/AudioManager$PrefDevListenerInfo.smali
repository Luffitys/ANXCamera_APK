.class Landroid/media/AudioManager$PrefDevListenerInfo;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrefDevListenerInfo"
.end annotation


# instance fields
.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mListener:Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;


# direct methods
.method constructor <init>(Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioManager$PrefDevListenerInfo;->mListener:Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;

    iput-object p2, p0, Landroid/media/AudioManager$PrefDevListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
