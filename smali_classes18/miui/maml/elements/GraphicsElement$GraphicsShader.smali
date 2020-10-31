.class Lmiui/maml/elements/GraphicsElement$GraphicsShader;
.super Ljava/lang/Object;
.source "GraphicsElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/GraphicsElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GraphicsShader"
.end annotation


# instance fields
.field public mColors:[I

.field private mMatrixName:Ljava/lang/String;

.field public mShader:Landroid/graphics/Shader;

.field private mShaderType:I

.field public mStops:[F

.field private mTileMode:Landroid/graphics/Shader$TileMode;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mShaderType:I

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/GraphicsElement$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/elements/GraphicsElement$GraphicsShader;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/GraphicsElement$GraphicsShader;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mMatrixName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lmiui/maml/elements/GraphicsElement$GraphicsShader;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mMatrixName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lmiui/maml/elements/GraphicsElement$GraphicsShader;)I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mShaderType:I

    return v0
.end method

.method static synthetic access$102(Lmiui/maml/elements/GraphicsElement$GraphicsShader;I)I
    .registers 2

    iput p1, p0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mShaderType:I

    return p1
.end method

.method static synthetic access$200(Lmiui/maml/elements/GraphicsElement$GraphicsShader;)Landroid/graphics/Shader$TileMode;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/maml/elements/GraphicsElement$GraphicsShader;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/GraphicsElement$GraphicsShader;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-object p1
.end method
