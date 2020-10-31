.class public abstract Landroid/media/tv/tuner/filter/FilterConfiguration;
.super Ljava/lang/Object;
.source "FilterConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field final mSettings:Landroid/media/tv/tuner/filter/Settings;


# direct methods
.method constructor <init>(Landroid/media/tv/tuner/filter/Settings;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/filter/FilterConfiguration;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    return-void
.end method


# virtual methods
.method public getSettings()Landroid/media/tv/tuner/filter/Settings;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/filter/FilterConfiguration;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    return-object v0
.end method

.method public abstract getType()I
.end method
