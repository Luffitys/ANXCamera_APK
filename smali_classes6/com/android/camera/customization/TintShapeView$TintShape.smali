.class public Lcom/android/camera/customization/TintShapeView$TintShape;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private cornerRadius:I

.field private extraPadding:I

.field private innerColor:I

.field private innerRadius:I

.field private outerColor:I

.field private outerRadius:I

.field private stroke:F

.field private type:Lcom/android/camera/customization/TintShapeView$ShapeType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/customization/TintShapeView$TintShape;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->innerColor:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/customization/TintShapeView$TintShape;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->outerColor:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/customization/TintShapeView$TintShape;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->innerRadius:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/customization/TintShapeView$TintShape;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->outerRadius:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/customization/TintShapeView$TintShape;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->stroke:F

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/customization/TintShapeView$TintShape;)Lcom/android/camera/customization/TintShapeView$ShapeType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->type:Lcom/android/camera/customization/TintShapeView$ShapeType;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/customization/TintShapeView$TintShape;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->extraPadding:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/customization/TintShapeView$TintShape;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->cornerRadius:I

    return p0
.end method


# virtual methods
.method public cornerRadius(I)Lcom/android/camera/customization/TintShapeView$TintShape;
    .locals 0

    iput p1, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->cornerRadius:I

    return-object p0
.end method

.method public extraPadding(I)Lcom/android/camera/customization/TintShapeView$TintShape;
    .locals 0

    iput p1, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->extraPadding:I

    return-object p0
.end method

.method public innerColor(I)Lcom/android/camera/customization/TintShapeView$TintShape;
    .locals 0

    iput p1, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->innerColor:I

    return-object p0
.end method

.method public innerRadius(I)Lcom/android/camera/customization/TintShapeView$TintShape;
    .locals 0

    iput p1, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->innerRadius:I

    return-object p0
.end method

.method public outerColor(I)Lcom/android/camera/customization/TintShapeView$TintShape;
    .locals 0

    iput p1, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->outerColor:I

    return-object p0
.end method

.method public outerRadius(I)Lcom/android/camera/customization/TintShapeView$TintShape;
    .locals 0

    iput p1, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->outerRadius:I

    return-object p0
.end method

.method public shape(Lcom/android/camera/customization/TintShapeView$ShapeType;)Lcom/android/camera/customization/TintShapeView$TintShape;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->type:Lcom/android/camera/customization/TintShapeView$ShapeType;

    return-object p0
.end method

.method public stroke(F)Lcom/android/camera/customization/TintShapeView$TintShape;
    .locals 0

    iput p1, p0, Lcom/android/camera/customization/TintShapeView$TintShape;->stroke:F

    return-object p0
.end method
