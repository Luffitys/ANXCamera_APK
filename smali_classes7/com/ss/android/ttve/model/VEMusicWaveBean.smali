.class public Lcom/ss/android/ttve/model/VEMusicWaveBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private waveBean:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWaveBean()Ljava/util/ArrayList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ttve/model/VEMusicWaveBean;->waveBean:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setWaveBean(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ss/android/ttve/model/VEMusicWaveBean;->waveBean:Ljava/util/ArrayList;

    return-void
.end method
