.class public abstract Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioPolicyFocusListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    .registers 2

    return-void
.end method

.method public onAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    .registers 3

    return-void
.end method

.method public onAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    .registers 3

    return-void
.end method

.method public onAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    .registers 3

    return-void
.end method
