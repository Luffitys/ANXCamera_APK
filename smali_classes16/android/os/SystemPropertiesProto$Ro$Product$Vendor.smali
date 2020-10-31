.class public final Landroid/os/SystemPropertiesProto$Ro$Product$Vendor;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro$Product;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Vendor"
.end annotation


# static fields
.field public static final BRAND:J = 0x10900000001L

.field public static final DEVICE:J = 0x10900000002L

.field public static final MANUFACTURER:J = 0x10900000003L

.field public static final MODEL:J = 0x10900000004L

.field public static final NAME:J = 0x10900000005L


# instance fields
.field final synthetic this$2:Landroid/os/SystemPropertiesProto$Ro$Product;


# direct methods
.method public constructor <init>(Landroid/os/SystemPropertiesProto$Ro$Product;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemPropertiesProto$Ro$Product$Vendor;->this$2:Landroid/os/SystemPropertiesProto$Ro$Product;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
