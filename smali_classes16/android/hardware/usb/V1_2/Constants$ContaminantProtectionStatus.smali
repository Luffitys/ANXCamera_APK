.class public final Landroid/hardware/usb/V1_2/Constants$ContaminantProtectionStatus;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_2/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContaminantProtectionStatus"
.end annotation


# static fields
.field public static final DISABLED:I = 0x8

.field public static final FORCE_DISABLE:I = 0x4

.field public static final FORCE_SINK:I = 0x1

.field public static final FORCE_SOURCE:I = 0x2

.field public static final NONE:I


# instance fields
.field final synthetic this$0:Landroid/hardware/usb/V1_2/Constants;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/V1_2/Constants;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/usb/V1_2/Constants$ContaminantProtectionStatus;->this$0:Landroid/hardware/usb/V1_2/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
