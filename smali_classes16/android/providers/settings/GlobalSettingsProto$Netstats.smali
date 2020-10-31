.class public final Landroid/providers/settings/GlobalSettingsProto$Netstats;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Netstats"
.end annotation


# static fields
.field public static final AUGMENT_ENABLED:J = 0x10b00000006L

.field public static final DEV_BUCKET_DURATION:J = 0x10b00000007L

.field public static final DEV_DELETE_AGE:J = 0x10b0000000aL

.field public static final DEV_PERSIST_BYTES:J = 0x10b00000008L

.field public static final DEV_ROTATE_AGE:J = 0x10b00000009L

.field public static final ENABLED:J = 0x10b00000001L

.field public static final GLOBAL_ALERT_BYTES:J = 0x10b00000004L

.field public static final POLL_INTERVAL:J = 0x10b00000002L

.field public static final SAMPLE_ENABLED:J = 0x10b00000005L

.field public static final TIME_CACHE_MAX_AGE:J = 0x10b00000003L

.field public static final UID_BUCKET_DURATION:J = 0x10b0000000bL

.field public static final UID_DELETE_AGE:J = 0x10b0000000eL

.field public static final UID_PERSIST_BYTES:J = 0x10b0000000cL

.field public static final UID_ROTATE_AGE:J = 0x10b0000000dL

.field public static final UID_TAG_BUCKET_DURATION:J = 0x10b0000000fL

.field public static final UID_TAG_DELETE_AGE:J = 0x10b00000012L

.field public static final UID_TAG_PERSIST_BYTES:J = 0x10b00000010L

.field public static final UID_TAG_ROTATE_AGE:J = 0x10b00000011L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Netstats;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
