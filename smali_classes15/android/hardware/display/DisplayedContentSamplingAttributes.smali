.class public final Landroid/hardware/display/DisplayedContentSamplingAttributes;
.super Ljava/lang/Object;
.source "DisplayedContentSamplingAttributes.java"


# instance fields
.field private mComponentMask:I

.field private mDataspace:I

.field private mPixelFormat:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mPixelFormat:I

    iput p2, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mDataspace:I

    iput p3, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mComponentMask:I

    return-void
.end method


# virtual methods
.method public getComponentMask()I
    .registers 2

    iget v0, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mComponentMask:I

    return v0
.end method

.method public getDataspace()I
    .registers 2

    iget v0, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mDataspace:I

    return v0
.end method

.method public getPixelFormat()I
    .registers 2

    iget v0, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mPixelFormat:I

    return v0
.end method
