.class public final Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventDataOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData;->access$000()Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearServiceApiVersion()Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData;

    invoke-static {v0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData;->access$200(Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData;)V

    return-object p0
.end method

.method public getServiceApiVersion()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData;

    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData;->getServiceApiVersion()I

    move-result p0

    return p0
.end method

.method public hasServiceApiVersion()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData;

    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData;->hasServiceApiVersion()Z

    move-result p0

    return p0
.end method

.method public setServiceApiVersion(I)Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData;

    invoke-static {v0, p1}, Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData;->access$100(Lcom/google/android/apps/gsa/search/shared/service/proto/LensServiceEventData;I)V

    return-object p0
.end method
