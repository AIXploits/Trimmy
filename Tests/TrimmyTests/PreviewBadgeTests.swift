import Testing
@testable import Trimmy

@Suite
struct PreviewBadgeTests {
    @Test
    func formatsBelowOneThousand() {
        #expect(PreviewMetrics.charCountSuffix(count: 0) == " (0 chars)")
        #expect(PreviewMetrics.charCountSuffix(count: 999) == " (999 chars)")
    }

    @Test
    func formatsAtAndAboveOneThousand() {
        #expect(PreviewMetrics.charCountSuffix(count: 1000) == " (1.0k chars)")
        #expect(PreviewMetrics.charCountSuffix(count: 1234) == " (1.2k chars)")
        #expect(PreviewMetrics.charCountSuffix(count: 10500) == " (10k chars)")
    }
}
