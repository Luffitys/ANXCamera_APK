.class public final synthetic Landroid/telephony/-$$Lambda$CbGeoUtils$Polygon$WFBMZ4F3Agw9FQd3hBGj-MGCuho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/telephony/CbGeoUtils$Polygon;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/CbGeoUtils$Polygon;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$CbGeoUtils$Polygon$WFBMZ4F3Agw9FQd3hBGj-MGCuho;->f$0:Landroid/telephony/CbGeoUtils$Polygon;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/telephony/-$$Lambda$CbGeoUtils$Polygon$WFBMZ4F3Agw9FQd3hBGj-MGCuho;->f$0:Landroid/telephony/CbGeoUtils$Polygon;

    check-cast p1, Landroid/telephony/CbGeoUtils$LatLng;

    invoke-virtual {v0, p1}, Landroid/telephony/CbGeoUtils$Polygon;->lambda$new$0$CbGeoUtils$Polygon(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object p1

    return-object p1
.end method
