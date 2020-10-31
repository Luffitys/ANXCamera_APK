.class public final Lmiui/system/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/system/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field public static miui_nature_sound_array:I

.field public static mobile_operator_display_names:I

.field public static mobile_operator_numeric_equivalencies:I

.field public static mobile_operator_numeric_values:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x12050003

    sput v0, Lmiui/system/R$array;->miui_nature_sound_array:I

    const/high16 v0, 0x12050000

    sput v0, Lmiui/system/R$array;->mobile_operator_display_names:I

    const v0, 0x12050001

    sput v0, Lmiui/system/R$array;->mobile_operator_numeric_equivalencies:I

    const v0, 0x12050002

    sput v0, Lmiui/system/R$array;->mobile_operator_numeric_values:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
