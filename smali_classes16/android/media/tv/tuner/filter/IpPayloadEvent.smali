.class public Landroid/media/tv/tuner/filter/IpPayloadEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "IpPayloadEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mDataLength:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/IpPayloadEvent;->mDataLength:I

    return-void
.end method


# virtual methods
.method public getDataLength()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/IpPayloadEvent;->mDataLength:I

    return v0
.end method
