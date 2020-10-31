.class public final Lcom/android/server/am/MemInfoDumpProto$AppData$ObjectStats;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto$AppData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ObjectStats"
.end annotation


# static fields
.field public static final ACTIVITY_INSTANCE_COUNT:J = 0x10500000004L

.field public static final APP_CONTEXT_INSTANCE_COUNT:J = 0x10500000003L

.field public static final BINDER_OBJECT_DEATH_COUNT:J = 0x1050000000bL

.field public static final GLOBAL_ASSET_COUNT:J = 0x10500000005L

.field public static final GLOBAL_ASSET_MANAGER_COUNT:J = 0x10500000006L

.field public static final LOCAL_BINDER_OBJECT_COUNT:J = 0x10500000007L

.field public static final OPEN_SSL_SOCKET_COUNT:J = 0x1050000000cL

.field public static final PARCEL_COUNT:J = 0x1050000000aL

.field public static final PARCEL_MEMORY_KB:J = 0x10300000009L

.field public static final PROXY_BINDER_OBJECT_COUNT:J = 0x10500000008L

.field public static final VIEW_INSTANCE_COUNT:J = 0x10500000001L

.field public static final VIEW_ROOT_INSTANCE_COUNT:J = 0x10500000002L

.field public static final WEBVIEW_INSTANCE_COUNT:J = 0x1050000000dL


# instance fields
.field final synthetic this$1:Lcom/android/server/am/MemInfoDumpProto$AppData;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MemInfoDumpProto$AppData;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MemInfoDumpProto$AppData$ObjectStats;->this$1:Lcom/android/server/am/MemInfoDumpProto$AppData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
