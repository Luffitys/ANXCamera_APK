.class public final Lcom/android/server/usage/UsageStatsObfuscatedProto$ChooserAction;
.super Ljava/lang/Object;
.source "UsageStatsObfuscatedProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsObfuscatedProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChooserAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsObfuscatedProto$ChooserAction$CategoryCount;
    }
.end annotation


# static fields
.field public static final ACTION_TOKEN:J = 0x10500000001L

.field public static final COUNTS:J = 0x20b00000002L


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsObfuscatedProto;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsObfuscatedProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsObfuscatedProto$ChooserAction;->this$0:Lcom/android/server/usage/UsageStatsObfuscatedProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
