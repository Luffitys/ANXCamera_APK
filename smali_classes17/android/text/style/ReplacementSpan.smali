.class public abstract Landroid/text/style/ReplacementSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "ReplacementSpan.java"


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/style/ReplacementSpan;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/text/style/ReplacementSpan;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/text/style/ReplacementSpan;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 2

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 2

    return-void
.end method
