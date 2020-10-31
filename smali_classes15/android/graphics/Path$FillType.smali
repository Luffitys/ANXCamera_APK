.class public final enum Landroid/graphics/Path$FillType;
.super Ljava/lang/Enum;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Path$FillType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Path$FillType;

.field public static final enum EVEN_ODD:Landroid/graphics/Path$FillType;

.field public static final enum INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

.field public static final enum INVERSE_WINDING:Landroid/graphics/Path$FillType;

.field public static final enum WINDING:Landroid/graphics/Path$FillType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Landroid/graphics/Path$FillType;

    const-string v1, "WINDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    new-instance v0, Landroid/graphics/Path$FillType;

    const-string v1, "EVEN_ODD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    new-instance v0, Landroid/graphics/Path$FillType;

    const-string v1, "INVERSE_WINDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    new-instance v0, Landroid/graphics/Path$FillType;

    const-string v1, "INVERSE_EVEN_ODD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Path$FillType;

    sget-object v6, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    aput-object v6, v1, v2

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Landroid/graphics/Path$FillType;->$VALUES:[Landroid/graphics/Path$FillType;

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

    iput p3, p0, Landroid/graphics/Path$FillType;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Path$FillType;
    .registers 2

    const-class v0, Landroid/graphics/Path$FillType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Path$FillType;
    .registers 1

    sget-object v0, Landroid/graphics/Path$FillType;->$VALUES:[Landroid/graphics/Path$FillType;

    invoke-virtual {v0}, [Landroid/graphics/Path$FillType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Path$FillType;

    return-object v0
.end method
