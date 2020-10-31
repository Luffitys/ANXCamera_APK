.class public Landroid/text/style/QuoteSpan;
.super Ljava/lang/Object;
.source "QuoteSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final STANDARD_COLOR:I = -0xffff01

.field public static final STANDARD_GAP_WIDTH_PX:I = 0x2

.field public static final STANDARD_STRIPE_WIDTH_PX:I = 0x2


# instance fields
.field private final mColor:I

.field private final mGapWidth:I

.field private final mStripeWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const v0, -0xffff01

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v1}, Landroid/text/style/QuoteSpan;-><init>(III)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v0}, Landroid/text/style/QuoteSpan;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/style/QuoteSpan;->mColor:I

    iput p2, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    iput p3, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .registers 26

    move-object v0, p0

    move-object v7, p2

    move/from16 v8, p3

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v10

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, v0, Landroid/text/style/QuoteSpan;->mColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v8

    move/from16 v11, p5

    int-to-float v3, v11

    iget v1, v0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    mul-int v1, v1, p4

    add-int/2addr v1, v8

    int-to-float v4, v1

    move/from16 v12, p7

    int-to-float v5, v12

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, v10}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getColor()I
    .registers 2

    iget v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    return v0
.end method

.method public getGapWidth()I
    .registers 2

    iget v0, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    return v0
.end method

.method public getLeadingMargin(Z)I
    .registers 4

    iget v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    iget v1, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSpanTypeId()I
    .registers 2

    invoke-virtual {p0}, Landroid/text/style/QuoteSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public getStripeWidth()I
    .registers 2

    iget v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/text/style/QuoteSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/QuoteSpan;->mStripeWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/QuoteSpan;->mGapWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
