.class public final enum Landroid/graphics/drawable/GradientDrawable$Orientation;
.super Ljava/lang/Enum;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/drawable/GradientDrawable$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "TOP_BOTTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "TR_BL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "RIGHT_LEFT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "BR_TL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "BOTTOM_TOP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "BL_TR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "LEFT_RIGHT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "TL_BR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v1, 0x8

    new-array v1, v1, [Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    aput-object v10, v1, v2

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    aput-object v2, v1, v5

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    aput-object v2, v1, v6

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    aput-object v2, v1, v7

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->$VALUES:[Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable$Orientation;
    .registers 2

    const-class v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public static values()[Landroid/graphics/drawable/GradientDrawable$Orientation;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->$VALUES:[Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0}, [Landroid/graphics/drawable/GradientDrawable$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method
