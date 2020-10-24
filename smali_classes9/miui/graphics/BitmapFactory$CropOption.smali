.class public Lmiui/graphics/BitmapFactory$CropOption;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public borderColor:I

.field public borderWidth:I

.field public rx:I

.field public ry:I

.field public srcBmpDrawingArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    iput p2, p0, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    iput p3, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    iput p4, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    return-void
.end method

.method public constructor <init>(Lmiui/graphics/BitmapFactory$CropOption;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    iget-object p1, p1, Lmiui/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    iput-object p1, p0, Lmiui/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    return-void
.end method
