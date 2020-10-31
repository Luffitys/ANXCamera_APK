.class public final Landroid/hardware/tv/tuner/V1_0/Constants$FrontendType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrontendType"
.end annotation


# static fields
.field public static final ANALOG:I = 0x1

.field public static final ATSC:I = 0x2

.field public static final ATSC3:I = 0x3

.field public static final DVBC:I = 0x4

.field public static final DVBS:I = 0x5

.field public static final DVBT:I = 0x6

.field public static final ISDBS:I = 0x7

.field public static final ISDBS3:I = 0x8

.field public static final ISDBT:I = 0x9

.field public static final UNDEFINED:I


# instance fields
.field final synthetic this$0:Landroid/hardware/tv/tuner/V1_0/Constants;


# direct methods
.method public constructor <init>(Landroid/hardware/tv/tuner/V1_0/Constants;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/tv/tuner/V1_0/Constants$FrontendType;->this$0:Landroid/hardware/tv/tuner/V1_0/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
