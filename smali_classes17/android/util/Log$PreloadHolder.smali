.class Landroid/util/Log$PreloadHolder;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreloadHolder"
.end annotation


# static fields
.field public static final LOGGER_ENTRY_MAX_PAYLOAD:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    # invokes: Landroid/util/Log;->logger_entry_max_payload_native()I
    invoke-static {}, Landroid/util/Log;->access$000()I

    move-result v0

    sput v0, Landroid/util/Log$PreloadHolder;->LOGGER_ENTRY_MAX_PAYLOAD:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
