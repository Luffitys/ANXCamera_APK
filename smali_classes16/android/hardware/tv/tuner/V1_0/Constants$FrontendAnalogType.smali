.class public final Landroid/hardware/tv/tuner/V1_0/Constants$FrontendAnalogType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrontendAnalogType"
.end annotation


# static fields
.field public static final AUTO:I = 0x1

.field public static final NTSC:I = 0x20

.field public static final NTSC_443:I = 0x40

.field public static final PAL:I = 0x2

.field public static final PAL_60:I = 0x10

.field public static final PAL_M:I = 0x4

.field public static final PAL_N:I = 0x8

.field public static final SECAM:I = 0x80

.field public static final UNDEFINED:I


# instance fields
.field final synthetic this$0:Landroid/hardware/tv/tuner/V1_0/Constants;


# direct methods
.method public constructor <init>(Landroid/hardware/tv/tuner/V1_0/Constants;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/tv/tuner/V1_0/Constants$FrontendAnalogType;->this$0:Landroid/hardware/tv/tuner/V1_0/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
