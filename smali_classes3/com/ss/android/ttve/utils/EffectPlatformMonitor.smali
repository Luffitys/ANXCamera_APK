.class public Lcom/ss/android/ttve/utils/EffectPlatformMonitor;
.super Ljava/lang/Object;
.source "EffectPlatformMonitor.java"

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/common/listener/IMonitorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public monitorCommonLog(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public monitorCommonLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public monitorDirectOnTimer(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    return-void
.end method

.method public monitorOnTimer(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    return-void
.end method

.method public monitorStatusAndDuration(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatusAndDuration(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public monitorStatusRate(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatusRate(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method
