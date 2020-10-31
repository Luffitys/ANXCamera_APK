.class abstract enum Landroid/app/admin/PasswordMetrics$ComplexityBucket;
.super Ljava/lang/Enum;
.source "PasswordMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/PasswordMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "ComplexityBucket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/admin/PasswordMetrics$ComplexityBucket;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/admin/PasswordMetrics$ComplexityBucket;

.field public static final enum BUCKET_HIGH:Landroid/app/admin/PasswordMetrics$ComplexityBucket;

.field public static final enum BUCKET_LOW:Landroid/app/admin/PasswordMetrics$ComplexityBucket;

.field public static final enum BUCKET_MEDIUM:Landroid/app/admin/PasswordMetrics$ComplexityBucket;

.field public static final enum BUCKET_NONE:Landroid/app/admin/PasswordMetrics$ComplexityBucket;


# instance fields
.field mComplexityLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Landroid/app/admin/PasswordMetrics$ComplexityBucket$1;

    const-string v1, "BUCKET_HIGH"

    const/4 v2, 0x0

    const/high16 v3, 0x50000

    invoke-direct {v0, v1, v2, v3}, Landroid/app/admin/PasswordMetrics$ComplexityBucket$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->BUCKET_HIGH:Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    new-instance v0, Landroid/app/admin/PasswordMetrics$ComplexityBucket$2;

    const-string v1, "BUCKET_MEDIUM"

    const/4 v3, 0x1

    const/high16 v4, 0x30000

    invoke-direct {v0, v1, v3, v4}, Landroid/app/admin/PasswordMetrics$ComplexityBucket$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->BUCKET_MEDIUM:Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    new-instance v0, Landroid/app/admin/PasswordMetrics$ComplexityBucket$3;

    const-string v1, "BUCKET_LOW"

    const/4 v4, 0x2

    const/high16 v5, 0x10000

    invoke-direct {v0, v1, v4, v5}, Landroid/app/admin/PasswordMetrics$ComplexityBucket$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->BUCKET_LOW:Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    new-instance v0, Landroid/app/admin/PasswordMetrics$ComplexityBucket$4;

    const-string v1, "BUCKET_NONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->BUCKET_NONE:Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    sget-object v6, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->BUCKET_HIGH:Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    aput-object v6, v1, v2

    sget-object v2, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->BUCKET_MEDIUM:Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    aput-object v2, v1, v3

    sget-object v2, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->BUCKET_LOW:Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->$VALUES:[Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->mComplexityLevel:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILandroid/app/admin/PasswordMetrics$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method static forComplexity(I)Landroid/app/admin/PasswordMetrics$ComplexityBucket;
    .registers 6

    invoke-static {}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->values()[Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    iget v4, v3, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->mComplexityLevel:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid complexity level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/admin/PasswordMetrics$ComplexityBucket;
    .registers 2

    const-class v0, Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    return-object v0
.end method

.method public static values()[Landroid/app/admin/PasswordMetrics$ComplexityBucket;
    .registers 1

    sget-object v0, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->$VALUES:[Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    invoke-virtual {v0}, [Landroid/app/admin/PasswordMetrics$ComplexityBucket;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    return-object v0
.end method


# virtual methods
.method abstract allowsCredType(I)Z
.end method

.method abstract allowsNumericPassword()Z
.end method

.method abstract canHaveSequence()Z
.end method

.method abstract getMinimumLength(Z)I
.end method
