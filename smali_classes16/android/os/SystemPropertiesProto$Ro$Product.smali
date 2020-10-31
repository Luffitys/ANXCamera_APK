.class public final Landroid/os/SystemPropertiesProto$Ro$Product;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Product"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemPropertiesProto$Ro$Product$Vendor;
    }
.end annotation


# static fields
.field public static final BOARD:J = 0x10900000001L

.field public static final BRAND:J = 0x10900000002L

.field public static final CPU_ABI:J = 0x10900000003L

.field public static final CPU_ABILIST:J = 0x20900000004L

.field public static final CPU_ABILIST32:J = 0x20900000005L

.field public static final CPU_ABILIST64:J = 0x20900000006L

.field public static final DEVICE:J = 0x10900000007L

.field public static final FIRST_API_LEVEL:J = 0x10500000008L

.field public static final MANUFACTURER:J = 0x10900000009L

.field public static final MODEL:J = 0x1090000000aL

.field public static final NAME:J = 0x1090000000bL

.field public static final VENDOR:J = 0x10b0000000cL


# instance fields
.field final synthetic this$1:Landroid/os/SystemPropertiesProto$Ro;


# direct methods
.method public constructor <init>(Landroid/os/SystemPropertiesProto$Ro;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemPropertiesProto$Ro$Product;->this$1:Landroid/os/SystemPropertiesProto$Ro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
