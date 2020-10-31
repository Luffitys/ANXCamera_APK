.class public final Landroid/hardware/tv/tuner/V1_0/Constants$Result;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Result"
.end annotation


# static fields
.field public static final INVALID_ARGUMENT:I = 0x4

.field public static final INVALID_STATE:I = 0x3

.field public static final NOT_INITIALIZED:I = 0x2

.field public static final OUT_OF_MEMORY:I = 0x5

.field public static final SUCCESS:I = 0x0

.field public static final UNAVAILABLE:I = 0x1

.field public static final UNKNOWN_ERROR:I = 0x6


# instance fields
.field final synthetic this$0:Landroid/hardware/tv/tuner/V1_0/Constants;


# direct methods
.method public constructor <init>(Landroid/hardware/tv/tuner/V1_0/Constants;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/tv/tuner/V1_0/Constants$Result;->this$0:Landroid/hardware/tv/tuner/V1_0/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
