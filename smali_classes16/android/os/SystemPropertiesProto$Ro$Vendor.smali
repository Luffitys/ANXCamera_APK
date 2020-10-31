.class public final Landroid/os/SystemPropertiesProto$Ro$Vendor;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Vendor"
.end annotation


# static fields
.field public static final BUILD_DATE:J = 0x10900000001L

.field public static final BUILD_DATE_UTC:J = 0x10300000002L

.field public static final BUILD_FINGERPRINT:J = 0x10900000003L


# instance fields
.field final synthetic this$1:Landroid/os/SystemPropertiesProto$Ro;


# direct methods
.method public constructor <init>(Landroid/os/SystemPropertiesProto$Ro;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemPropertiesProto$Ro$Vendor;->this$1:Landroid/os/SystemPropertiesProto$Ro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
