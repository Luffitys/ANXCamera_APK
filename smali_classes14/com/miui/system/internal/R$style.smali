.class public final Lcom/miui/system/internal/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/system/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static Theme_Dark_System:I

.field public static Theme_Light_System:I

.field public static Theme_Provision:I

.field public static Widget_MiCloudStateView_Dark:I

.field public static Widget_MiCloudStateView_Light:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x12090001

    sput v0, Lcom/miui/system/internal/R$style;->Theme_Dark_System:I

    const/high16 v0, 0x12090000

    sput v0, Lcom/miui/system/internal/R$style;->Theme_Light_System:I

    const v0, 0x12090004

    sput v0, Lcom/miui/system/internal/R$style;->Theme_Provision:I

    const v0, 0x12090003

    sput v0, Lcom/miui/system/internal/R$style;->Widget_MiCloudStateView_Dark:I

    const v0, 0x12090002

    sput v0, Lcom/miui/system/internal/R$style;->Widget_MiCloudStateView_Light:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
