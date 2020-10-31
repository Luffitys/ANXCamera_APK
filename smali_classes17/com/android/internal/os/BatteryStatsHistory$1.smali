.class Lcom/android/internal/os/BatteryStatsHistory$1;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsHistory;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Parcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsHistory;

.field final synthetic val$dedup:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsHistory;Ljava/util/Set;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory$1;->this$0:Lcom/android/internal/os/BatteryStatsHistory;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory$1;->val$dedup:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 8

    const-string v0, ".bin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    return v1

    :cond_a
    nop

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/internal/util/ParseUtils;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_25

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$1;->val$dedup:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1

    :cond_25
    return v1
.end method
