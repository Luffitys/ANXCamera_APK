.class public final Landroid/util/quota/CountQuotaTrackerProto$CountLimit;
.super Ljava/lang/Object;
.source "CountQuotaTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/quota/CountQuotaTrackerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CountLimit"
.end annotation


# static fields
.field public static final CATEGORY:J = 0x10b00000001L

.field public static final LIMIT:J = 0x10500000002L

.field public static final WINDOW_SIZE_MS:J = 0x10300000003L


# instance fields
.field final synthetic this$0:Landroid/util/quota/CountQuotaTrackerProto;


# direct methods
.method public constructor <init>(Landroid/util/quota/CountQuotaTrackerProto;)V
    .registers 2

    iput-object p1, p0, Landroid/util/quota/CountQuotaTrackerProto$CountLimit;->this$0:Landroid/util/quota/CountQuotaTrackerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
