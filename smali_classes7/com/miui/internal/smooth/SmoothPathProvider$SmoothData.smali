.class public Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

.field public bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

.field public height:F

.field public ksi:F

.field public smooth:D

.field public topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

.field public topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

.field public width:F


# direct methods
.method public constructor <init>(FFDF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:F

    iput p2, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:F

    iput-wide p3, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iput p5, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->ksi:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iput-object p1, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iput-object p1, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iput-object p1, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    return-void
.end method
