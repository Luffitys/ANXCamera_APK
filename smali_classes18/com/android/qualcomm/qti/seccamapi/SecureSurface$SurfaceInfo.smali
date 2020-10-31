.class public Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;
.super Ljava/lang/Object;
.source "SecureSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/qualcomm/qti/seccamapi/SecureSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceInfo"
.end annotation


# instance fields
.field private surfaceId_:J

.field private surface_:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Ljava/lang/Long;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->surfaceId_:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->surface_:Landroid/view/Surface;

    iput-object p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->surface_:Landroid/view/Surface;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->surfaceId_:J

    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->surface_:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceId()Ljava/lang/Long;
    .registers 3

    iget-wide v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->surfaceId_:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
