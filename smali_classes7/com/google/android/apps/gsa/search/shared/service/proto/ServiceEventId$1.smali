.class Lcom/google/android/apps/gsa/search/shared/service/proto/ServiceEventId$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/android/apps/gsa/search/shared/service/proto/ServiceEventId;
    .locals 0

    invoke-static {p1}, Lcom/google/android/apps/gsa/search/shared/service/proto/ServiceEventId;->forNumber(I)Lcom/google/android/apps/gsa/search/shared/service/proto/ServiceEventId;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/gsa/search/shared/service/proto/ServiceEventId$1;->findValueByNumber(I)Lcom/google/android/apps/gsa/search/shared/service/proto/ServiceEventId;

    move-result-object p0

    return-object p0
.end method
