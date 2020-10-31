.class public abstract Landroid/media/tv/tuner/filter/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mType:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/Settings;->mType:I

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/Settings;->mType:I

    return v0
.end method
