.class public final Lcom/android/nfc/cardemulation/RegisteredAidCacheProto$AidCacheEntry;
.super Ljava/lang/Object;
.source "RegisteredAidCacheProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredAidCacheProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AidCacheEntry"
.end annotation


# static fields
.field public static final CATEGORY:J = 0x10900000002L

.field public static final DEFAULT_COMPONENT:J = 0x10b00000003L

.field public static final KEY:J = 0x10900000001L

.field public static final SERVICES:J = 0x20b00000004L


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredAidCacheProto;


# direct methods
.method public constructor <init>(Lcom/android/nfc/cardemulation/RegisteredAidCacheProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCacheProto$AidCacheEntry;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCacheProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
