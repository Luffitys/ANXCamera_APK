.class final Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
.super Ljava/lang/Object;
.source "CarrierAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierAppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AssociatedAppInfo"
.end annotation


# instance fields
.field public final addedInSdk:I

.field public final appInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput p2, p0, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I

    return-void
.end method
